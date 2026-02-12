/*
  # Create Bilingual Content Tables for Kairui Website

  1. New Tables
    - `blog_posts`
      - `id` (uuid, primary key)
      - `title_zh` (text) - Chinese title
      - `title_en` (text) - English title
      - `content_zh` (text) - Chinese content
      - `content_en` (text) - English content
      - `excerpt_zh` (text) - Chinese excerpt
      - `excerpt_en` (text) - English excerpt
      - `slug` (text, unique) - URL slug
      - `featured_image` (text) - Image URL
      - `category` (text) - Post category
      - `tags` (text array) - Post tags
      - `published` (boolean) - Publication status
      - `created_at` (timestamptz) - Creation timestamp
      - `updated_at` (timestamptz) - Update timestamp

    - `success_stories`
      - `id` (uuid, primary key)
      - `client_name` (text) - Client company name
      - `title_zh` (text) - Chinese title
      - `title_en` (text) - English title
      - `description_zh` (text) - Chinese description
      - `description_en` (text) - English description
      - `challenge_zh` (text) - Chinese challenge description
      - `challenge_en` (text) - English challenge description
      - `solution_zh` (text) - Chinese solution description
      - `solution_en` (text) - English solution description
      - `results_zh` (text) - Chinese results description
      - `results_en` (text) - English results description
      - `featured_image` (text) - Image URL
      - `industry` (text) - Client industry
      - `roi_improvement` (numeric) - ROI improvement percentage
      - `published` (boolean) - Publication status
      - `created_at` (timestamptz) - Creation timestamp
      - `updated_at` (timestamptz) - Update timestamp

    - `team_members`
      - `id` (uuid, primary key)
      - `name` (text) - Member name
      - `position_zh` (text) - Chinese position title
      - `position_en` (text) - English position title
      - `bio_zh` (text) - Chinese biography
      - `bio_en` (text) - English biography
      - `photo` (text) - Photo URL
      - `linkedin_url` (text) - LinkedIn profile URL
      - `order_index` (integer) - Display order
      - `active` (boolean) - Active status
      - `created_at` (timestamptz) - Creation timestamp

    - `testimonials`
      - `id` (uuid, primary key)
      - `client_name` (text) - Client name
      - `position_zh` (text) - Chinese position title
      - `position_en` (text) - English position title
      - `company` (text) - Company name
      - `quote_zh` (text) - Chinese testimonial quote
      - `quote_en` (text) - English testimonial quote
      - `photo` (text) - Photo URL
      - `rating` (integer) - Rating out of 5
      - `published` (boolean) - Publication status
      - `created_at` (timestamptz) - Creation timestamp

  2. Security
    - Enable RLS on all tables
    - Add policies for authenticated admin users to manage content
    - Add policies for public read access to published content
*/

-- Create blog_posts table
CREATE TABLE IF NOT EXISTS blog_posts (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  title_zh text NOT NULL,
  title_en text NOT NULL,
  content_zh text NOT NULL,
  content_en text NOT NULL,
  excerpt_zh text DEFAULT '',
  excerpt_en text DEFAULT '',
  slug text UNIQUE NOT NULL,
  featured_image text DEFAULT '',
  category text DEFAULT '',
  tags text[] DEFAULT '{}',
  published boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Create success_stories table
CREATE TABLE IF NOT EXISTS success_stories (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  client_name text NOT NULL,
  title_zh text NOT NULL,
  title_en text NOT NULL,
  description_zh text NOT NULL,
  description_en text NOT NULL,
  challenge_zh text DEFAULT '',
  challenge_en text DEFAULT '',
  solution_zh text DEFAULT '',
  solution_en text DEFAULT '',
  results_zh text DEFAULT '',
  results_en text DEFAULT '',
  featured_image text DEFAULT '',
  industry text DEFAULT '',
  roi_improvement numeric DEFAULT 0,
  published boolean DEFAULT false,
  created_at timestamptz DEFAULT now(),
  updated_at timestamptz DEFAULT now()
);

-- Create team_members table
CREATE TABLE IF NOT EXISTS team_members (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  name text NOT NULL,
  position_zh text NOT NULL,
  position_en text NOT NULL,
  bio_zh text DEFAULT '',
  bio_en text DEFAULT '',
  photo text DEFAULT '',
  linkedin_url text DEFAULT '',
  order_index integer DEFAULT 0,
  active boolean DEFAULT true,
  created_at timestamptz DEFAULT now()
);

-- Create testimonials table
CREATE TABLE IF NOT EXISTS testimonials (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  client_name text NOT NULL,
  position_zh text NOT NULL,
  position_en text NOT NULL,
  company text NOT NULL,
  quote_zh text NOT NULL,
  quote_en text NOT NULL,
  photo text DEFAULT '',
  rating integer DEFAULT 5,
  published boolean DEFAULT false,
  created_at timestamptz DEFAULT now()
);

-- Enable RLS on all tables
ALTER TABLE blog_posts ENABLE ROW LEVEL SECURITY;
ALTER TABLE success_stories ENABLE ROW LEVEL SECURITY;
ALTER TABLE team_members ENABLE ROW LEVEL SECURITY;
ALTER TABLE testimonials ENABLE ROW LEVEL SECURITY;

-- Public read policies for published content
CREATE POLICY "Public can view published blog posts"
  ON blog_posts FOR SELECT
  TO public
  USING (published = true);

CREATE POLICY "Public can view published success stories"
  ON success_stories FOR SELECT
  TO public
  USING (published = true);

CREATE POLICY "Public can view active team members"
  ON team_members FOR SELECT
  TO public
  USING (active = true);

CREATE POLICY "Public can view published testimonials"
  ON testimonials FOR SELECT
  TO public
  USING (published = true);

-- Admin policies for authenticated users (you can modify these based on your admin setup)
CREATE POLICY "Authenticated users can manage blog posts"
  ON blog_posts FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated users can manage success stories"
  ON success_stories FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated users can manage team members"
  ON team_members FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);

CREATE POLICY "Authenticated users can manage testimonials"
  ON testimonials FOR ALL
  TO authenticated
  USING (true)
  WITH CHECK (true);
