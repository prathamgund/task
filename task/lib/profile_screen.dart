import 'package:flutter/material.dart';
import 'package:task/model_images.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> services = ['SEO', 'Free Lancing', 'User Research'];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          'BFM',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.local_offer),
              label: const Text(
                '50',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/model.jpg',
                  height: 650,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Row(
                    children: [
                      const CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage('assets/model.jpg'),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'cc_creative',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                          const SizedBox(height: 5),
                          const Text(
                            'UI/UX Designer',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Wrap(
                            spacing: 5,
                            children: services.map((service) => _buildServiceBox(service)).toList(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.yellow),
                          SizedBox(width: 5),
                          Text('4.3'),
                        ],
                      ),
                      Row(
                        children: [
                          Icon(Icons.location_on),
                          SizedBox(width: 5),
                          Text('Delhi, India'),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Fashion Photographer',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'I do all types of fashion photography',
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 10),
                  _buildSectionTitle('Service Provided'),
                  const SizedBox(height: 5),
                  _buildTextBoxes(services),
                  const SizedBox(height: 15),
                  const Text("About Me", style: TextStyle(fontWeight: FontWeight.bold),),
                  const SizedBox(height: 20),
                  const Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",),
                  const SizedBox(height: 20),
                  _buildSectionTitle('Skills'),
                  const SizedBox(height: 5),
                  _buildTextBoxes(services, isSkill: true),
                  const SizedBox(height: 20),
                  const ModelImagesRow(),
                  const SizedBox(height: 20),
                  _buildClientFeedback(),
                  const SizedBox(height: 20),
                  _buildLoadMoreButton(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            TextButton(
              onPressed: () {},
              child: const Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(fontWeight: FontWeight.bold),
    );
  }

  Widget _buildTextBoxes(List<String> items, {bool isSkill = false}) {
    return Wrap(
      children: items.map((item) => _buildServiceBox(item, isSkill: isSkill)).toList(),
    );
  }

  Widget _buildServiceBox(String serviceName, {bool isSkill = false}) {
    return Container(
      margin: const EdgeInsets.only(right: 10, bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: isSkill ? Colors.black : Colors.lightBlueAccent,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        serviceName,
        style: TextStyle(color: isSkill ? Colors.white : Colors.black),
      ),
    );
  }

  Widget _buildClientFeedback() {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Client Feedback",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/model1.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  maxLines: 5,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star_border),
                    Icon(Icons.star_border),
                    SizedBox(width: 5),
                    Text('3/5'),
                  ],
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/model3.jpg'),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'John Doe',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
                  maxLines: 5,
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star, color: Colors.amber),
                    Icon(Icons.star_border),
                    SizedBox(width: 5),
                    Text('4/5'),
                  ],
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildLoadMoreButton() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: const Text(
          'Load More',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

class ModelImagesRow extends StatelessWidget {
  const ModelImagesRow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: const [
        ModelImage(imagePath: 'assets/model1.jpg'),
        ModelImage(imagePath: 'assets/model2.jpg'),
        ModelImage(imagePath: 'assets/model3.jpg'),
        ModelImage(imagePath: 'assets/model4.jpg'),
        ModelImage(imagePath: 'assets/model5.jpg'),
      ],
    );
  }
}
